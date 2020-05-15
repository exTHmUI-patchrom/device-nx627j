.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$_VOB5FQfE7RUMgpmr8bK-j3CsUA;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$setNickname$12(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
