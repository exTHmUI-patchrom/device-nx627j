.class Lcom/android/server/BSPCABCController$XmlData;
.super Ljava/lang/Object;
.source "BSPCABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmlData"
.end annotation


# instance fields
.field private array:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/BSPCABCController;

.field private value:I


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p3, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/BSPCABCController$XmlData;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p2, p0, Lcom/android/server/BSPCABCController$XmlData;->value:I

    .line 133
    iput-object p3, p0, Lcom/android/server/BSPCABCController$XmlData;->array:Landroid/util/ArrayMap;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BSPCABCController$XmlData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController$XmlData;

    .line 128
    iget v0, p0, Lcom/android/server/BSPCABCController$XmlData;->value:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/BSPCABCController$XmlData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPCABCController$XmlData;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/BSPCABCController$XmlData;->value:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/BSPCABCController$XmlData;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController$XmlData;

    .line 128
    iget-object v0, p0, Lcom/android/server/BSPCABCController$XmlData;->array:Landroid/util/ArrayMap;

    return-object v0
.end method
