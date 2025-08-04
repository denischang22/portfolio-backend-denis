import { Component } from '@angular/core';
import { JobService } from './job.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent {
  keyword: string = '';
  jobs: string[] = [];

  constructor(private jobService: JobService) {}

  searchJobs() {
    this.jobService.searchJobs(this.keyword).subscribe(response => {
      this.jobs = response.jobs;
    });
  }
}
