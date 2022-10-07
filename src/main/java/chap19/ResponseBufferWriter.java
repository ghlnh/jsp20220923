package chap19;

import java.io.PrintWriter;
import java.io.StringWriter;
//print(), prinln(), write()등의 메서드를 통해서 전달된 데이터를 StringWriter에 저장
public class ResponseBufferWriter extends PrintWriter{
	public ResponseBufferWriter() {
		super(new StringWriter(8080));
	}
//StringWriter에 저장된 데이터를 String 타입으로 변환	
	public String toString() {
		return ((StringWriter) super.out).toString();
	}
}
