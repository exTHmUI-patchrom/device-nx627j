.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/media/MediaCasException$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/media/MediaCasException$1;

    .line 24
    invoke-direct {p0, p1}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .locals 2
    .param p0, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    .line 36
    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    .line 38
    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    .line 41
    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 43
    return-void

    .line 39
    :cond_1
    new-instance v0, Landroid/media/MediaCasException$DeniedByServerException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    new-instance v0, Landroid/media/MediaCasException$ResourceBusyException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3
    new-instance v0, Landroid/media/MediaCasException$NotProvisionedException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
