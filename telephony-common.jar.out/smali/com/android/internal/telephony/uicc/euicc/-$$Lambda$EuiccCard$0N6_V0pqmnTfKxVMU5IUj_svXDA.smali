.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$0N6_V0pqmnTfKxVMU5IUj_svXDA;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$disableProfile$6(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
