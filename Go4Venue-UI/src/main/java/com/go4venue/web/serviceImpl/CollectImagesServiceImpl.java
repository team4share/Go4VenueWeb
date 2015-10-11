package com.go4venue.web.serviceImpl;

import java.io.File;
import java.net.URL;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.go4venue.web.dao.VenueUrlDao;
import com.go4venue.web.persistence.beans.VenueURL;
import com.go4venue.web.service.CollectImagesService;


@Service
public class CollectImagesServiceImpl implements CollectImagesService {
   
    @Autowired
    private VenueUrlDao venueUrlDao;

    private WebDriver driver;
    private String baseUrl;
    private Integer counter = 0;
   
    /*
     * private boolean acceptNextAlert = true; private StringBuffer verificationErrors = new StringBuffer(); private int invalidImageCount;
     */

    private List<VenueURL> getUrls() {
	return venueUrlDao.getVenueURLs();
    }

    public void getAllImages() throws Exception {
	List<VenueURL> venueUrls = getUrls();
	for (VenueURL venueUrl : venueUrls) {
	    String urlSegments[] = venueUrl.getUrl().split("/");
	    String location = urlSegments[3];
	    String name = urlSegments[4];
	    getAllImagesFromGivenPlaces(name + " + " + location);
	}
    }

    public void getAllImagesFromGivenPlaces(String place) throws Exception {
	driver = new FirefoxDriver();
	baseUrl = "https://www.google.co.in/";
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	driver.get(baseUrl);
	WebElement query = driver.findElement(By.name("q"));
	query.sendKeys(place);
	query.submit();
	driver.findElement(By.xpath("(//a[contains(text(),'Images')])[2]")).click();
	File files = null;
	Thread.sleep(10000);
	List<WebElement> listImages = driver.findElements(By.tagName("img"));
	for (WebElement image : listImages) {
	    try {
		if (image.isDisplayed() && image.getAttribute("src") != null) {
		    counter++;
		    String[] names = image.getAttribute("src").split("=");
		    String name = names[names.length - 1];
		    System.out.println(image.getAttribute("src"));
		    URL myURL = new URL(image.getAttribute("src"));
		    files = new File("C:\\downloadedPictures\\" + place+"_"+counter + ".jpg");
		    System.out.println(myURL);
		    org.apache.commons.io.FileUtils.copyURLToFile(myURL, files);
		    //driver.close();
		}
	    } catch (Exception exp) {
		System.out.println(exp);
	    }
	}
	driver.close();
	System.out.println("No. of total displable images: " + counter);
    }

    /*
     * public void validateInvalidImages() { try { invalidImageCount = 0; List<WebElement> imagesList = driver.findElements(By.tagName("img"));
     * System.out.println("Total no. of images are " + imagesList.size()); for (WebElement imgElement : imagesList) { if (imgElement != null) {
     * verifyimageActive(imgElement); } } System.out.println("Total no. of invalid images are " + invalidImageCount); } catch (Exception e) {
     * e.printStackTrace(); System.out.println(e.getMessage()); } }
     * 
     * public void verifyimageActive(WebElement imgElement) { try { HttpClient client = HttpClientBuilder.create().build(); HttpGet request = new
     * HttpGet(imgElement.getAttribute("src")); HttpResponse response = client.execute(request); // verifying response code he HttpStatus should be 200 if not,
     * // increment as invalid images count if (response.getStatusLine().getStatusCode() != 200) { invalidImageCount++; } else {
     * System.out.println(imgElement.getAttribute("src")); } } catch (Exception e) { e.printStackTrace(); } }
     */
}