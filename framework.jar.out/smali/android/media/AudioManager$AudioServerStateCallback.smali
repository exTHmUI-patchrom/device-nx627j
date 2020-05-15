.class public abstract Landroid/media/AudioManager$AudioServerStateCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioServerStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioServerDown()V
    .locals 0

    .line 5003
    return-void
.end method

.method public onAudioServerUp()V
    .locals 0

    .line 5004
    return-void
.end method
