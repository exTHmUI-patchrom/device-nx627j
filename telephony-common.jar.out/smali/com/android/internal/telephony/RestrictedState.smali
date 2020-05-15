.class public Lcom/android/internal/telephony/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private mCsEmergencyRestricted:Z

.field private mCsNormalRestricted:Z

.field private mPsRestricted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/RestrictedState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v1, "s":Lcom/android/internal/telephony/RestrictedState;
    nop

    .line 97
    nop

    .line 100
    if-nez p1, :cond_0

    .line 101
    return v0

    .line 104
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    iget-boolean v3, v1, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    iget-boolean v3, v1, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    iget-boolean v3, v1, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 96
    .end local v1    # "s":Lcom/android/internal/telephony/RestrictedState;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public isAnyCsRestricted()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCsEmergencyRestricted()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    return v0
.end method

.method public isCsNormalRestricted()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    return v0
.end method

.method public isCsRestricted()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPsRestricted()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    return v0
.end method

.method public setCsEmergencyRestricted(Z)V
    .locals 0
    .param p1, "csEmergencyRestricted"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    .line 45
    return-void
.end method

.method public setCsNormalRestricted(Z)V
    .locals 0
    .param p1, "csNormalRestricted"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    .line 59
    return-void
.end method

.method public setPsRestricted(Z)V
    .locals 0
    .param p1, "psRestricted"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    const-string v0, "none"

    .line 113
    .local v0, "csString":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v0, "all"

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-nez v1, :cond_1

    .line 116
    const-string v0, "emergency"

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_2

    .line 118
    const-string v0, "normal call"

    .line 121
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restricted State CS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
