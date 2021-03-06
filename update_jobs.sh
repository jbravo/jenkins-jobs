#!/bin/bash

cd `dirname $0`
jenkins-jobs --conf jenkins_jobs.ini update jobs/simple-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/app-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/java-docker-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/java-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/ep-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/ep-promotable-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/pipeline-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/airflow-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/crustore2-jobs.yml $@
jenkins-jobs --conf jenkins_jobs.ini update jobs/aem-dispatcher-jobs.yml $@
python update_promotable_jobs.py $@
