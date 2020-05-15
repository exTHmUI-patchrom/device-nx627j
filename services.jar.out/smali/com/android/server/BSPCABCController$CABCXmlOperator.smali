.class Lcom/android/server/BSPCABCController$CABCXmlOperator;
.super Lcom/android/server/BSPXmlOperator;
.source "BSPCABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABCXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/BSPXmlOperator<",
        "Lcom/android/server/BSPCABCController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .line 138
    iput-object p1, p0, Lcom/android/server/BSPCABCController$CABCXmlOperator;->this$0:Lcom/android/server/BSPCABCController;

    .line 139
    invoke-direct {p0, p2}, Lcom/android/server/BSPXmlOperator;-><init>(Ljava/io/File;)V

    .line 140
    return-void
.end method


# virtual methods
.method public createObject()Lcom/android/server/BSPCABCController$XmlData;
    .locals 4

    .line 184
    new-instance v0, Lcom/android/server/BSPCABCController$XmlData;

    iget-object v1, p0, Lcom/android/server/BSPCABCController$CABCXmlOperator;->this$0:Lcom/android/server/BSPCABCController;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/BSPCABCController$XmlData;-><init>(Lcom/android/server/BSPCABCController;ILandroid/util/ArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->createObject()Lcom/android/server/BSPCABCController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/BSPCABCController$XmlData;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->createObject()Lcom/android/server/BSPCABCController$XmlData;

    move-result-object v0

    .line 161
    .local v0, "temp":Lcom/android/server/BSPCABCController$XmlData;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    .line 162
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "default_setting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 167
    const-string v3, "default_mode"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "defattr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/BSPCABCController$XmlData;->access$002(Lcom/android/server/BSPCABCController$XmlData;I)I

    .line 171
    .end local v3    # "defattr":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "app_setting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    const-string v3, "app_name"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "app":Ljava/lang/String;
    const-string v5, "app_mode"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "appMode":Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 175
    invoke-static {v0}, Lcom/android/server/BSPCABCController$XmlData;->access$100(Lcom/android/server/BSPCABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appMode":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 179
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

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/BSPCABCController$XmlData;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/BSPCABCController$XmlData;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcom/android/server/BSPCABCController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    const-string v0, "default_setting"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v0, "default_mode"

    invoke-static {p3}, Lcom/android/server/BSPCABCController$XmlData;->access$000(Lcom/android/server/BSPCABCController$XmlData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v0, "default_setting"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/BSPCABCController$CABCXmlOperator;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v2}, Lcom/android/server/BSPCABCController;->access$200(Lcom/android/server/BSPCABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 149
    const-string v2, "app_setting"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v2, "app_name"

    invoke-static {p3}, Lcom/android/server/BSPCABCController$XmlData;->access$100(Lcom/android/server/BSPCABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    iget-object v2, p0, Lcom/android/server/BSPCABCController$CABCXmlOperator;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v2}, Lcom/android/server/BSPCABCController;->access$200(Lcom/android/server/BSPCABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    .local v2, "value":I
    const-string v3, "app_mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v3, "app_setting"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    .end local v2    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
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

    .line 137
    check-cast p3, Lcom/android/server/BSPCABCController$XmlData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/BSPCABCController$XmlData;)V

    return-void
.end method
