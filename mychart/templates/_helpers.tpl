{{/* Generate basic labels */}}
{{- define "mychart.labels"}}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
{{- end }}
{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}+{{ now | htmlDate }}"
{{- end -}}
