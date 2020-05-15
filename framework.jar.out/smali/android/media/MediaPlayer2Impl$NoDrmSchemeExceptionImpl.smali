.class public final Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;
.super Landroid/media/MediaPlayer2$NoDrmSchemeException;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoDrmSchemeExceptionImpl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 3960
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    .line 3961
    return-void
.end method
