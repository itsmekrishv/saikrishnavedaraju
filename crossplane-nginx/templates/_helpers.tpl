{{- define "crossplane-nginx.name" -}}
{{- default .Chart.Name .Values.name | trunc 40 | trimSuffix "-" }}
{{- end }}

{{- define "crossplane-nginx.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
