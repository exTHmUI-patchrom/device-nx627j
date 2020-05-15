.class Landroid/content/SyncAdaptersCache$MySerializer;
.super Ljava/lang/Object;
.source "SyncAdaptersCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncAdaptersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/SyncAdapterType;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 150
    const-string v0, "authority"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "authority":Ljava/lang/String;
    const-string v2, "accountType"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/SyncAdaptersCache$MySerializer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/SyncAdapterType;

    move-result-object p1

    return-object p1
.end method

.method public writeAsXml(Landroid/content/SyncAdapterType;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "item"    # Landroid/content/SyncAdapterType;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-string v0, "authority"

    iget-object v1, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v0, "accountType"

    iget-object v1, p1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2}, Landroid/content/SyncAdaptersCache$MySerializer;->writeAsXml(Landroid/content/SyncAdapterType;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method
