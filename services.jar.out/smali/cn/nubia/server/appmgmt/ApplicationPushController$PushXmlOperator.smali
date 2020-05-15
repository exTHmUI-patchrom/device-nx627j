.class Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .line 183
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 184
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 185
    return-void
.end method


# virtual methods
.method public createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .locals 4

    .line 229
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object v0

    .line 207
    .local v0, "temp":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 207
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    .line 208
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 209
    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "dependce"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 213
    const-string/jumbo v3, "include_pkg"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "dependence":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 215
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v3    # "dependence":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    const-string/jumbo v3, "push"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    const-string/jumbo v3, "include_pkg"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "accessPkg":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 220
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "accessPkg":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 224
    :cond_5
    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)V
    .locals 4
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "name":Ljava/lang/String;
    const-string v3, "dependce"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string/jumbo v3, "include_pkg"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const-string v3, "dependce"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "push"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v3, "include_pkg"

    invoke-interface {p2, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string/jumbo v3, "push"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 201
    :cond_1
    return-void
.end method

.method public bridge synthetic writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    check-cast p3, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)V

    return-void
.end method
