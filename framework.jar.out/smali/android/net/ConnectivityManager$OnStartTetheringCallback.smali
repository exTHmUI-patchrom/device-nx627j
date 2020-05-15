.class public abstract Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnStartTetheringCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 2231
    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 2226
    return-void
.end method
