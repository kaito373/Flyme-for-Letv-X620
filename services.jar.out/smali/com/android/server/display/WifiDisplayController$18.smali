.class Lcom/android/server/display/WifiDisplayController$18;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 471
    if-nez p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap57(Lcom/android/server/display/WifiDisplayController;)V

    .line 470
    :cond_0
    return-void
.end method