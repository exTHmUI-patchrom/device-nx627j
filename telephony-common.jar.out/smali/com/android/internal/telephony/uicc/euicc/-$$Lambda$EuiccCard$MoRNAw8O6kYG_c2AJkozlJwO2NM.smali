.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$MoRNAw8O6kYG_c2AJkozlJwO2NM;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$deleteProfile$14(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
