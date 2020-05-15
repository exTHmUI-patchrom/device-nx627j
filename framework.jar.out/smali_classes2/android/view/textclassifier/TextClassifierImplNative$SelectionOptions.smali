.class public final Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOptions"
.end annotation


# instance fields
.field private final mLocales:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "locales"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;->mLocales:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public getLocales()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$SelectionOptions;->mLocales:Ljava/lang/String;

    return-object v0
.end method
