.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

.field private final synthetic f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;->f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;

    return-void
.end method


# virtual methods
.method public final buildRequest([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$7vWsDgJ3RMY6kHsGeBw-CxIKViI;->f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$newRequestProvider$48(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
