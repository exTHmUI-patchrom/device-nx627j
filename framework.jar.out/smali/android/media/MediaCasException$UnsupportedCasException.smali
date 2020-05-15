.class public final Landroid/media/MediaCasException$UnsupportedCasException;
.super Landroid/media/MediaCasException;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCasException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedCasException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;Landroid/media/MediaCasException$1;)V

    .line 53
    return-void
.end method
