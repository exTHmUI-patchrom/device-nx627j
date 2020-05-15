.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;->f$0:[B

    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;->f$1:I

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;->f$0:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$mf0dWT4hLdKlsLFFHVfdGFxHyX0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$cancelSession$38([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
