.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    return-void
.end method


# virtual methods
.method public final handleResult([B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$okradEAowCk8rNBK1OaJIA6l6eA;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$getEid$11(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
