.class final Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
.super Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillFieldClassificationServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/AutofillFieldClassificationService;


# direct methods
.method private constructor <init>(Landroid/service/autofill/AutofillFieldClassificationService;)V
    .locals 0

    .line 182
    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-direct {p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/autofill/AutofillFieldClassificationService;
    .param p2, "x1"    # Landroid/service/autofill/AutofillFieldClassificationService$1;

    .line 182
    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;)V

    return-void
.end method

.method static synthetic lambda$getScores$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/RemoteCallback;
    .param p2, "x$1"    # Ljava/lang/String;
    .param p3, "x$2"    # Landroid/os/Bundle;
    .param p4, "x$3"    # Ljava/util/List;
    .param p5, "x$4"    # [Ljava/lang/String;

    .line 189
    move-object v0, p0

    check-cast v0, Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/service/autofill/AutofillFieldClassificationService;->access$300(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getScores(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V
    .locals 8
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "algorithmName"    # Ljava/lang/String;
    .param p3, "algorithmArgs"    # Landroid/os/Bundle;
    .param p5, "userDataValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    .local p4, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-static {v0}, Landroid/service/autofill/AutofillFieldClassificationService;->access$200(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;->INSTANCE:Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;

    iget-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method
