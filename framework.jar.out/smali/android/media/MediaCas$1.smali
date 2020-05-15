.class Landroid/media/MediaCas$1;
.super Landroid/util/Singleton;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/cas/V1_0/IMediaCasService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/hardware/cas/V1_0/IMediaCasService;
    .locals 1

    .line 107
    :try_start_0
    invoke-static {}, Landroid/hardware/cas/V1_0/IMediaCasService;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/media/MediaCas$1;->create()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    return-object v0
.end method
