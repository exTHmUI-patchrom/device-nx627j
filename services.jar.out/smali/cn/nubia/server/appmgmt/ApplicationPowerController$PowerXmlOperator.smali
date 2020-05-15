.class Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .line 331
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 332
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 333
    return-void
.end method


# virtual methods
.method public createObject()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    .line 351
    .local v0, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 351
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    .line 352
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>()V

    .line 359
    .local v4, "value":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    const-string/jumbo v5, "package"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 361
    move-object v3, v5

    .line 363
    :cond_2
    const-string v7, "allow_wakelock"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "wakelock":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 365
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v4, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    .line 367
    :cond_3
    const-string v8, "allow_alarm"

    invoke-interface {p1, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "alarm":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 369
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v4, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    .line 371
    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "alarm":Ljava/lang/String;
    .end local v7    # "wakelock":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 374
    :cond_6
    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    .local p3, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v0, 0x0

    .line 337
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 338
    const-string v1, "app"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    const-string/jumbo v1, "package"

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 341
    .local v1, "value":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    const-string v3, "allow_wakelock"

    iget-boolean v4, v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    const-string v3, "allow_alarm"

    iget-boolean v4, v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string v3, "app"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .end local v1    # "value":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V

    return-void
.end method
