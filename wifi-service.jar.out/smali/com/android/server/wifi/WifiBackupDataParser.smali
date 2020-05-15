.class interface abstract Lcom/android/server/wifi/WifiBackupDataParser;
.super Ljava/lang/Object;
.source "WifiBackupDataParser.java"


# virtual methods
.method public abstract parseNetworkConfigurationsFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
