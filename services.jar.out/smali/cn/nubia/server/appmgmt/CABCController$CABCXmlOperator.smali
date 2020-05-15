.class Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABCXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Lcn/nubia/server/appmgmt/CABCController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .line 152
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    .line 153
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 154
    return-void
.end method


# virtual methods
.method public createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .locals 4

    .line 198
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/server/appmgmt/CABCController$XmlData;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILandroid/util/ArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->createObject()Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object v0

    .line 175
    .local v0, "temp":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    .line 176
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "default_setting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 181
    const-string v3, "default_mode"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "defattr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$002(Lcn/nubia/server/appmgmt/CABCController$XmlData;I)I

    .line 185
    .end local v3    # "defattr":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "app_setting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const-string v3, "app_name"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "app":Ljava/lang/String;
    const-string v5, "app_mode"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "appMode":Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 189
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "app":Ljava/lang/String;
    .end local v4    # "appMode":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 193
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

    .line 151
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/CABCController$XmlData;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/CABCController$XmlData;)V
    .locals 5
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    const-string v0, "default_setting"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const-string v0, "default_mode"

    invoke-static {p3}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$000(Lcn/nubia/server/appmgmt/CABCController$XmlData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v0, "default_setting"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 163
    const-string v2, "app_setting"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string v2, "app_name"

    invoke-static {p3}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/CABCController;->access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 166
    .local v2, "value":I
    const-string v3, "app_mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const-string v3, "app_setting"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .end local v2    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
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

    .line 151
    check-cast p3, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/CABCController$XmlData;)V

    return-void
.end method
