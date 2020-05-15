.class public abstract Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceInternal;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FingerprintServiceInternal"
.end annotation


# instance fields
.field protected mCanGoToSleepByPowerKey:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 2207
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceInternal;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceInternal;->mCanGoToSleepByPowerKey:Z

    return-void
.end method


# virtual methods
.method public abstract getCanGoToSleepByPowerKey()Z
.end method

.method public abstract setCanGoToSleepByPowerKey(Z)V
.end method
