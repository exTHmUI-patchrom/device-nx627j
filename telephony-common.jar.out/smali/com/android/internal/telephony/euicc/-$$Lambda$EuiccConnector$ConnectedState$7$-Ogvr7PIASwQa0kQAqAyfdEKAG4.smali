.class public final synthetic Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

.field private final synthetic f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput p3, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget v2, p0, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccConnector$ConnectedState$7$-Ogvr7PIASwQa0kQAqAyfdEKAG4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;->lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    return-void
.end method
