.class public abstract Landroid/media/MediaPlayer2$DrmEventCallback;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrmEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/MediaPlayer2$DrmInfo;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "drmInfo"    # Landroid/media/MediaPlayer2$DrmInfo;

    .line 2312
    return-void
.end method

.method public onDrmPrepared(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "status"    # I

    .line 2323
    return-void
.end method
