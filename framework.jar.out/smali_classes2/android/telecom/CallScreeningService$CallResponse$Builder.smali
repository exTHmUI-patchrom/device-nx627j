.class public Landroid/telecom/CallScreeningService$CallResponse$Builder;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService$CallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mShouldDisallowCall:Z

.field private mShouldRejectCall:Z

.field private mShouldSkipCallLog:Z

.field private mShouldSkipNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/CallScreeningService$CallResponse;
    .locals 7

    .line 185
    new-instance v6, Landroid/telecom/CallScreeningService$CallResponse;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZLandroid/telecom/CallScreeningService$1;)V

    return-object v6
.end method

.method public setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldDisallowCall"    # Z

    .line 153
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    .line 154
    return-object p0
.end method

.method public setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldRejectCall"    # Z

    .line 162
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    .line 163
    return-object p0
.end method

.method public setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipCallLog"    # Z

    .line 171
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    .line 172
    return-object p0
.end method

.method public setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipNotification"    # Z

    .line 180
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    .line 181
    return-object p0
.end method
