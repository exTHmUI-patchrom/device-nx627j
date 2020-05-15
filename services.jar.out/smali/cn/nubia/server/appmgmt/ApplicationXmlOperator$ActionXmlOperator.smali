.class Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationXmlOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationXmlOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator<",
        "Landroid/util/ArrayMap<",
        "Ljava/lang/String;",
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_DATA:Ljava/lang/String; = "data"


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationXmlOperator;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationXmlOperator;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationXmlOperator;
    .param p2, "file"    # Ljava/io/File;

    .line 108
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationXmlOperator;

    .line 109
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 110
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
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->createObject()Landroid/util/ArrayMap;

    move-result-object v0

    .line 131
    .local v0, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 131
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    .line 132
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "key":Ljava/lang/String;
    const-string v5, "action"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 138
    .local v5, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 139
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v5, v6

    .line 141
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v1    # "tag":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 146
    :cond_3
    return-object v0
.end method

.method public bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArrayMap;

    move-result-object p1

    return-object p1
.end method

.method public writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V
    .locals 6
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    .local p3, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 115
    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 117
    .local v1, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "data"

    const/4 v4, 0x0

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo v3, "type"

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v3, "action"

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v3, "data"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 115
    .end local v1    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
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

    .line 103
    check-cast p3, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationXmlOperator$ActionXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;)V

    return-void
.end method
