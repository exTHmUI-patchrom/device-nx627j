.class public final synthetic Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

.field private final synthetic f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field private final synthetic f$2:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$2:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$5$fNoNRKwweNINlHKYo1LLy2Hd_RA;->f$2:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;->lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V

    return-void
.end method
