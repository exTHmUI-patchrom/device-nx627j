.class Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LimitedCircularArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mMax:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiDiagnostics;
    .param p2, "max"    # I

    .line 377
    .local p0, "this":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<TE;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    .line 379
    iput p2, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mMax:I

    .line 380
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mMax:I

    if-lt v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 389
    .local p0, "this":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
