package com.zhang.ssmschoolshop.util;


import com.zhang.ssmschoolshop.annotinon.ExportEntityMap;
import com.zhang.ssmschoolshop.entity.Goods;
import lombok.extern.slf4j.Slf4j;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.formula.functions.T;
import org.apache.poi.ss.usermodel.Footer;
import org.apache.poi.ss.usermodel.Header;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;

import java.util.*;

/** 
* @ClassName: ExportExcelUtils2 
* @Description: 
* @Author: ASUS 
* @Date 2020/3/18 
* @Version 1.0 
**/
@Slf4j
public class ExcelUtils { 
private static final Logger logger = LoggerFactory.getLogger(ExcelUtils.class); 

/** 
* Export to Excel 
* 
* @param excelName The excel name to be exported 
* @param list The data set to be exported
* @param c The map corresponding to the Chinese and English fields, that is, the excel header to be exported
* @param response Use response to export to the browser
* @param <T>
*/
public static <T> void export(String excelName, List<T> list, Class<T> c, HttpServletResponse response) {
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH：mm：ss");// Set the date format
// Set the default file name to the current time: year, month, day, hour, minute, second
if (excelName == null || excelName == "") {
excelName = df.format(new Date()).toString();
} else {
excelName = excelName + df.format(new Date()).toString();
}
// Set the response header information
response.reset();
response.setContentType("application/vnd.ms-excel"); // Change to output excel file
try {
response.setHeader("Content-disposition", "attachment; filename="
+ new String(excelName.getBytes("gb2312"), "ISO-8859-1") + ".xls");
} catch (UnsupportedEncodingException e1) {
//logger.info(e1.getMessage());
}

try {
//Create a WorkBook, corresponding to an Excel file
HSSFWorkbook wb = new HSSFWorkbook();
//In the Workbook, create a sheet, corresponding to the workbook (sheet) in Excel
HSSFSheet sheet = wb.createSheet(excelName);
//Set margins, headers, and footers

// HSSFPrintSetup printSetup = (HSSFPrintSetup) sheet.getPrintSetup();
HSSFPrintSetup printSetup = sheet.getPrintSetup();
//// Print direction, true: landscape, false: portrait (default)
printSetup.setLandscape(true);
printSetup.setHeaderMargin(0.2);
printSetup.setFooterMargin(0.2);
//Set the print scale to 88%
//printSetup.setScale((short) 55);
printSetup.setFitHeight((short) 0);
printSetup.setFitWidth((short) 1);
// printSetup.setLeftToRight(true);//Columns are displayed from left to right②
printSetup.setPaperSize(HSSFPrintSetup.A4_PAPERSIZE); // Paper
sheet.setMargin(HSSFSheet.BottomMargin, (double) 0.8);// Page margin (bottom)
sheet.setMargin(HSSFSheet.LeftMargin, (double) 0);// Page margin (left)
sheet.setMargin(HSSFSheet.RightMargin, (double) 0);// Page margin (right)
sheet.setMargin(HSSFSheet.TopMargin, (double) 0.8);// Page margin (top)
sheet.setHorizontallyCenter(true);//Set the print page to horizontal center
sheet.setVerticallyCenter(true);
sheet.setAutobreaks(false);
sheet.setFitToPage(false);
Footer footer = sheet.getFooter();
//Set the number of pages
footer.setCenter("第" + HeaderFooter.page() + "页,共" + HeaderFooter.numPages() + "页");
Header header = sheet.getHeader();
//Customize the header and set the header to display information on the left, middle and right
//Center
// header.setCenter("Center Header");
//Left
header.setLeft(HSSFHeader.font("宋体", "") +
HSSFHeader.fontSize((short) 16) + excelName + ".xls");
//Right
// header.setRight(HSSFHeader.font("Stencil-Normal", "Italic") +
// HSSFHeader.fontSize((short) 16) + "Right w/ Stencil-Normal Italic font and size 16");

//Create a cell and set the value header Set the header to the center
HSSFCellStyle style = wb.createCellStyle();
//Set the border
// style.setBorderBottom(HSSFCellStyle.BORDER_THIN); //Bottom border
// style.setBorderLeft(HSSFCellStyle.BORDER_THIN);//Left border
// style.setBorderTop(HSSFCellStyle.BORDER_THIN);//Top border
// style.setBorderRight(HSSFCellStyle.BORDER_THIN);//Right border
//Automatic line wrap
//style.setWrapText(true);
//Create a centered format
// style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
// style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//Center top and bottom
//Set font
HSSFFont font = wb.createFont();
font.setFontName("宋体");

style.setFont(font);
//Fill in worksheet
//Get the map field of the excel header that needs to be transferred
LinkedHashMap<String, String> fieldMap = new LinkedHashMap<>();
//Fill the value in the loop annotation into the Link collection
Field[]declaredFields = c.getDeclaredFields();

for (Field declaredField : declaredFields) {
//Get annotation object
ExportEntityMap declaredAnnotation = declaredField.getDeclaredAnnotation(ExportEntityMap.class);
if (declaredAnnotation != null) {
fieldMap.put(declaredAnnotation.EnName(), declaredAnnotation.CnName());
}
}
fillSheet(sheet, list, fieldMap, style);
//Output file
/**
* getOutputStream() writes data in byte stream format
* The browser must have a corresponding encoding table to parse the byte stream into characters
* If getWriter() is used to write in character format,
* The encoding becomes conflicting. . All specifications cannot be used at the same time
*/
OutputStream ouputStream = response.getOutputStream();
wb.write(ouputStream);
ouputStream.flush();
ouputStream.close();

} catch (Exception e) {
System.err.println("Export to Excel failed!");
System.err.println(e.getMessage());
}
}

/**
* Get field object according to field name
*
* @param fieldName field name
* @param clazz class containing the field
* @return field
*/
public static Field getFieldByName(String fieldName, Class<?> clazz) {
logger.info("Get field object according to field name: getFieldByName()");
// Get all fields of this class
Field[] selfFields = clazz.getDeclaredFields();
// If the field exists in this class, return
for (Field field : selfFields) {
//If the field exists in this class, return
if (field.getName().equals(fieldName)) {
return field;
}
}
//Otherwise, check if the field exists in the parent class, and return if it does
Class<?> superClazz = clazz.getSuperclass();
if (superClazz != null && superClazz != Object.class) {
//Recursion
return getFieldByName(fieldName, superClazz);
}
//If neither this class nor the parent class exists, return null
return null;
}

/**
* Get the field value based on the field name
*
* @param fieldName field name
* @param o object
* @return field value
* @throws Exception exception
*/
public static Object getFieldValueByName(String fieldName, Object o)
throws Exception {
logger.info("Get the field value according to the field name: getFieldValueByName()");
Object value = null;
//Get the field object according to the field name
Field field = getFieldByName(fieldName, o.getClass());
//If the field exists, take out the value of the field
if (field != null) {
field.setAccessible(true);//The member variables in the class are private, and the attribute values ​​are used outside the class, so this operation must be performed
value = field.get(o);//Get the value of the current Field in the current object
} else {
throw new Exception(o.getClass().getSimpleName() + "Field name does not exist in the class"
+ fieldName);
}
return value;
}

/**
* Get the attribute value according to the attribute name with or without path, that is, accept simple attribute names,
* such as userName, etc., and accept attribute names with paths, such as student.department.name, etc.
*
* @param fieldNameSequence Attribute name with path or simple attribute name
* @param o object
* @return attribute value
* @throws Exception exception
*/
public static Object getFieldValueByNameSequence(String fieldNameSequence,
Object o) throws Exception {
// logger.info("Get attribute value according to attribute name with or without path, that is, accept simple attribute name: getFieldValueByNameSequence()");
Object value = null;
// Split fieldNameSequence
String[] attributes = fieldNameSequence.split("\\.");
if (attributes.length == 1) {
value = getFieldValueByName(fieldNameSequence, o);
} else {
// Get the connection attribute object according to the first connection attribute name in the array, such as student.department.name
Object fieldObj = getFieldValueByName(attributes[0], o);
// Intercept the path after the first attribute name
String subFieldNameSequence = fieldNameSequence
.substring(fieldNameSequence.indexOf(".") + 1);
//Recursively get the value of the final attribute object
value = getFieldValueByNameSequence(subFieldNameSequence, fieldObj);
}
return value;
}

/**
* Fill data into the worksheet
*
* @param sheet excel worksheet name
* @param list data source
* @param fieldMap Map of Chinese and English field correspondence
* @param style format in the table
* @throws Exception exception
*/
public static <T> void fillSheet(HSSFSheet sheet, List<T> list,
LinkedHashMap<String, String> fieldMap, HSSFCellStyle style) throws Exception {
//logger.info("Fill data into the worksheet: fillSheet()");
// Define an array to store English field names and Chinese field names
String[] enFields = new String[fieldMap.size()]; 
String[] cnFields = new String[fieldMap.size()]; 
// fill the array 
int count = 0; 
for (Map.Entry<String, String> entry : fieldMap.entrySet()) { 
enFields[count] = entry.getKey(); 
cnFields[count] = entry.getValue(); 
count++; 
} 
//Storage maximum column width 
Map<Integer, Integer> maxWidth = new HashMap<>(); 
HSSFRow row = sheet.createRow((int) 0); 
HSSFCell cell = null; 
// Fill in the header 
for (int i = 0; i < cnFields.length; i++) { 
cell = row.createCell(i); 
cell.setCellValue(cnFields[i]); 
cell.setCellStyle(style); 
sheet.autoSizeColumn(i); //Set adaptive width and height
maxWidth.put(i, cell.getStringCellValue().getBytes().length * 256 + 200); 
} 
//fill content 
for (int index = 0; index < list.size(); index++) { 
row = sheet.createRow(index + 1); 
// Get a single object 
T item = list.get(index); 
int j = 0; 
for (int i = 0; i < enFields.length; i++) { 
HSSFCell createCell = row.createCell(j); 
Object objValue = getFieldValueByNameSequence(enFields[i], item); 
String fieldValue = objValue == null ? "" : objValue.toString(); 
cell = row.createCell(i); 
createCell.setCellValue(fieldValue); 

int length = createCell.getStringCellValue().getBytes().length * 256 + 200; //Here the maximum width is limited to 15000
if (length > 15000) {
length = 15000;
}
maxWidth.put(j, Math.max(length, maxWidth.get(j)));
j++;
createCell.setCellStyle(style);
}
}

// Column width adaptation
for (int i = 0; i < cnFields.length; i++) {
sheet.setColumnWidth(i, maxWidth.get(i));
}
}

public static List<T> getRecordByTxt(String path) {
List<T> result = new ArrayList<>();
try {
List<String> contentList = Files.readAllLines(Paths.get(path),
StandardCharsets.UTF_8);
contentList.forEach(e -> {
if (!StringUtils.isEmpty(e)) {
// Process string and get entity class by yourself according to the imported file
// result.add(e);
}
});
} catch (IOException e) {
e.printStackTrace();
}

return result;
}

}
