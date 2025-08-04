import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable()
export class JobService {
  private apiUrl = 'http://localhost:8000/jobs/search';

  constructor(private http: HttpClient) {}

  searchJobs(keyword: string): Observable<any> {
    return this.http.get<any>(`${this.apiUrl}?keyword=${keyword}`);
  }
}
