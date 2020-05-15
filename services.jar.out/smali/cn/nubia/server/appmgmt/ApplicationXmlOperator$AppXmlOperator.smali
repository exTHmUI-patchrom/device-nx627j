.class Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationXmlOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationXmlOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final TAG_APP:Ljava/lang/String; = "app"


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationXmlOperator;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationXmlOperator;
    .param p2, "file"    # Ljava/io/File;

    .line 20
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationXmlOperator;

    .line 21
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->createObject()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public createObject()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->createObject()Ljava/util/HashSet;

    move-result-object v0

    .line 38
    .local v0, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 38
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 39
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 49
    :cond_2
    return-object v0
.end method

.method public bridge synthetic writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$AppXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/util/HashSet;)V

    return-void
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    .local p3, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "app"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    const-string/jumbo v2, "package"

    invoke-interface {p2, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    const-string v2, "app"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
