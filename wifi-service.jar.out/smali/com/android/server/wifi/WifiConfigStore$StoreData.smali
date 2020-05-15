.class public interface abstract Lcom/android/server/wifi/WifiConfigStore$StoreData;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoreData"
.end annotation


# virtual methods
.method public abstract deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract resetData(Z)V
.end method

.method public abstract serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract supportShareData()Z
.end method
