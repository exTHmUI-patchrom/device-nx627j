.class public interface abstract Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;
.super Ljava/lang/Object;
.source "WifiAwareShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DelegatedShellCommand"
.end annotation


# virtual methods
.method public abstract onCommand(Landroid/os/ShellCommand;)I
.end method

.method public abstract onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V
.end method

.method public abstract onReset()V
.end method
