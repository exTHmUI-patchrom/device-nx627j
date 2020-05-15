.class Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreLaunchBlackListXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final PRELAUNCH_BLACK_LIST_FILE:Ljava/lang/String; = "prelaunch_black_list.xml"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    .line 599
    const-string/jumbo p1, "prelaunch_black_list.xml"

    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 600
    return-void
.end method


# virtual methods
.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->createObject()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public createObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->createObject()Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 616
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 617
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    .line 618
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 622
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 627
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

    .line 592
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchBlackListXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 605
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 605
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 606
    const-string/jumbo v1, "item"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    const-string/jumbo v1, "package"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    const-string/jumbo v1, "item"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
