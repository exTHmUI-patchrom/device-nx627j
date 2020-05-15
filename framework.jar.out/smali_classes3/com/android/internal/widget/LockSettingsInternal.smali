.class public abstract Lcom/android/internal/widget/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEscrowToken([BI)J
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
.end method

.method public abstract unlockUserWithToken(J[BI)Z
.end method
