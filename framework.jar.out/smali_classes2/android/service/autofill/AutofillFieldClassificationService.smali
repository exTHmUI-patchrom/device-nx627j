.class public abstract Landroid/service/autofill/AutofillFieldClassificationService;
.super Landroid/app/Service;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/AutofillFieldClassificationService$Scores;,
        Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
    }
.end annotation


# static fields
.field public static final EXTRA_SCORES:Ljava/lang/String; = "scores"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillFieldClassificationService"

.field public static final SERVICE_META_DATA_KEY_AVAILABLE_ALGORITHMS:Ljava/lang/String; = "android.autofill.field_classification.available_algorithms"

.field public static final SERVICE_META_DATA_KEY_DEFAULT_ALGORITHM:Ljava/lang/String; = "android.autofill.field_classification.default_algorithm"

.field private static final TAG:Ljava/lang/String; = "AutofillFieldClassificationService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$200(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/autofill/AutofillFieldClassificationService;

    .line 54
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/autofill/AutofillFieldClassificationService;
    .param p1, "x1"    # Landroid/os/RemoteCallback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # [Ljava/lang/String;

    .line 54
    invoke-direct/range {p0 .. p5}, Landroid/service/autofill/AutofillFieldClassificationService;->getScores(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method private getScores(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V
    .locals 5
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

    .line 86
    .local p4, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "data":Landroid/os/Bundle;
    nop

    .line 88
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-virtual {p0, p2, p3, p4, v1}, Landroid/service/autofill/AutofillFieldClassificationService;->onGetScores(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)[[F

    move-result-object v1

    .line 89
    .local v1, "scores":[[F
    if-eqz v1, :cond_0

    .line 90
    const-string/jumbo v2, "scores"

    new-instance v3, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>([[FLandroid/service/autofill/AutofillFieldClassificationService$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    new-instance v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService$1;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    .line 106
    return-void
.end method

.method public onGetScores(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)[[F
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "algorithmOptions"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[[F"
        }
    .end annotation

    .line 178
    .local p3, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .local p4, "userDataValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "AutofillFieldClassificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service implementation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement onGetScore()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method
