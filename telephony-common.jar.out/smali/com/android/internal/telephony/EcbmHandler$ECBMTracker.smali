.class public Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;
.super Ljava/lang/Object;
.source "EcbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/EcbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ECBMTracker"
.end annotation


# instance fields
.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field public mImsEcbmStateHandler:Lcom/android/internal/telephony/EcbmHandler$ImsEcbmStateHandler;

.field public mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field public mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/EcbmHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/EcbmHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/EcbmHandler;

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/EcbmHandler$ECBMTracker;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
