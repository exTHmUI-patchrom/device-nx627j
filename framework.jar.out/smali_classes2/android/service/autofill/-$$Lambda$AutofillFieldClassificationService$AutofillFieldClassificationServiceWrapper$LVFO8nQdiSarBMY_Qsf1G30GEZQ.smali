.class public final synthetic Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;->INSTANCE:Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$LVFO8nQdiSarBMY_Qsf1G30GEZQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/autofill/AutofillFieldClassificationService;

    check-cast p2, Landroid/os/RemoteCallback;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/os/Bundle;

    check-cast p5, Ljava/util/List;

    check-cast p6, [Ljava/lang/String;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    invoke-static/range {p0 .. p5}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->lambda$getScores$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method
