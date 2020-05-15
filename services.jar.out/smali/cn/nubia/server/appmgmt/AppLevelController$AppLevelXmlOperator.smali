.class Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "AppLevelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppLevelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLevelXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ATTR_APP_LEVEL:Ljava/lang/String; = "level"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final TAG_DATA:Ljava/lang/String; = "data"


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppLevelController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/AppLevelController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .line 164
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->this$0:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 165
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 166
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    .line 183
    .local v0, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 183
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 184
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    .line 185
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v5, "level"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 195
    :cond_2
    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .locals 4
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    .local p3, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string/jumbo v1, "package"

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const-string/jumbo v1, "level"

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    const-string v1, "data"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
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

    .line 159
    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V

    return-void
.end method
