FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"IyB2aW06IHNldCBmaWxldHlwZT15YW1sIHNoaWZ0d2lkdGg9MiB0YWJzdG9wPTIgZXhwYW5kdGFi\
IHNtYXJ0aW5kZW50IDoKLS0tCnZlcnNpb246IDEuMApuYW1lOiB1bmlmaS1jb250cm9sbGVyLWFw\
YgpkZXNjcmlwdGlvbjogVWJpcXVpdGkgVW5pRmkgQ29udHJvbGxlcgpiaW5kYWJsZTogRmFsc2UK\
YXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBVQk5UIFVuaUZpIENvbnRy\
b2xsZXIgKEFQQikKICBkZXBlbmRlbmNpZXM6CiAgICAtICdkb2NrZXIuaW8vamFjb2JhbGJlcnR5\
L3VuaWZpJwpwbGFuczoKICAtIG5hbWU6IEVwaGVtZXJhbAogICAgZGVzY3JpcHRpb246IERlcGxv\
eSBob21lLWFzc2lzdGFudCB3aXRoIGVwaGVtZXJhbCBzdG9yYWdlICh0ZXN0aW5nKQogICAgZnJl\
ZTogVHJ1ZQogICAgZGVmYXVsdDogVHJ1ZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1l\
OiBFcGhlbWVyYWwKICAgIHBhcmFtZXRlcnM6CiAgICAgIC0gbmFtZTogZXh0ZXJuYWxfaXAKICAg\
ICAgICB0eXBlOiBzdHJpbmcKICAgICAgICB0aXRsZTogRXh0ZXJuYWwgSVAgb2YgaW5mcmFzdHJ1\
Y3R1cmUgbm9kZSAocmVnaW9uPWluZnJhLCB2aXJ0dWFsIElQKQogICAgICAgIHJlcXVpcmVkOiB0\
cnVlCiAgLSBuYW1lOiBQZXJzaXN0ZW50CiAgICBkZXNjcmlwdGlvbjogRGVwbG95IFVuaUZpIENv\
bnRyb2xsZXIgd2l0aCBwZXJzaXN0ZW50IHN0b3JhZ2UKICAgIGZyZWU6IFRydWUKICAgIG1ldGFk\
YXRhOgogICAgICBkaXNwbGF5TmFtZTogUGVyc2lzdGVudAogICAgcGFyYW1ldGVyczoKICAgICAg\
LSBuYW1lOiBleHRlcm5hbF9pcAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHRpdGxlOiBF\
eHRlcm5hbCBJUCBvZiBpbmZyYXN0cnVjdHVyZSBub2RlIChyZWdpb249aW5mcmEsIHZpcnR1YWwg\
SVApCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSBuYW1lOiB1bmlmaV9jb250cm9sbGVy\
X3ZvbHVtZV9zaXplCiAgICAgICAgdHlwZTogZW51bQogICAgICAgIGRlZmF1bHQ6ICcxR2knCiAg\
ICAgICAgZW51bTogWycxR2knLCAnNUdpJywgJzEwR2knXQogICAgICAgIHRpdGxlOiBVbmlGaSBD\
b250cm9sbGVyIFZvbHVtZSBTaXplCiAgICAgICAgcmVxdWlyZWQ6IHRydWUK"

COPY playbooks/* /opt/apb/project/
COPY . /opt/ansible/roles/unifi-controller-apb
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
