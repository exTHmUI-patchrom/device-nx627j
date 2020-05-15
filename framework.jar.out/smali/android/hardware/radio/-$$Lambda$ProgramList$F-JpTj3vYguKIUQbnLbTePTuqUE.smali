.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramList$F-JpTj3vYguKIUQbnLbTePTuqUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/ProgramList;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$F-JpTj3vYguKIUQbnLbTePTuqUE;->f$0:Landroid/hardware/radio/ProgramList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$ProgramList$F-JpTj3vYguKIUQbnLbTePTuqUE;->f$0:Landroid/hardware/radio/ProgramList;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$1(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
