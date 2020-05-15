.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerAdapter$ytmKJEaNVVp6n7nE6SVU6pZ9g7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCloseListener;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/TunerAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/-$$Lambda$TunerAdapter$ytmKJEaNVVp6n7nE6SVU6pZ9g7c;->f$0:Landroid/hardware/radio/TunerAdapter;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/-$$Lambda$TunerAdapter$ytmKJEaNVVp6n7nE6SVU6pZ9g7c;->f$0:Landroid/hardware/radio/TunerAdapter;

    invoke-static {v0}, Landroid/hardware/radio/TunerAdapter;->lambda$getDynamicProgramList$1(Landroid/hardware/radio/TunerAdapter;)V

    return-void
.end method
