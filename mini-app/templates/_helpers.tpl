{{- define "mini-app.name" -}}
mini-app
{{- end -}}
{{- define "mini-app.fullname" -}}
{{- printf "%s-%s" (include "mini-app.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "mini-app.mongodb.fullname" -}}
{{- printf "%s-mongodb-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}