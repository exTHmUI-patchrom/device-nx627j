.class public abstract Landroid/security/ConfirmationCallback;
.super Ljava/lang/Object;
.source "ConfirmationCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    .line 46
    return-void
.end method

.method public onConfirmed([B)V
    .locals 0
    .param p1, "dataThatWasConfirmed"    # [B

    .line 36
    return-void
.end method

.method public onDismissed()V
    .locals 0

    .line 41
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 53
    return-void
.end method
