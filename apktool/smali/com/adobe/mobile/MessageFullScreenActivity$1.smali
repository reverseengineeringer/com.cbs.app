.class final Lcom/adobe/mobile/MessageFullScreenActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/MessageFullScreenActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/adobe/mobile/MessageFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/MessageFullScreenActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/mobile/MessageFullScreenActivity$1;->b:Lcom/adobe/mobile/MessageFullScreenActivity;

    iput-object p2, p0, Lcom/adobe/mobile/MessageFullScreenActivity$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/mobile/MessageFullScreenActivity$1;->b:Lcom/adobe/mobile/MessageFullScreenActivity;

    iget-object v0, v0, Lcom/adobe/mobile/MessageFullScreenActivity;->a:Lcom/adobe/mobile/o;

    iget-object v1, p0, Lcom/adobe/mobile/MessageFullScreenActivity$1;->a:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/adobe/mobile/o;->n:Landroid/view/ViewGroup;

    .line 60
    iget-object v0, p0, Lcom/adobe/mobile/MessageFullScreenActivity$1;->b:Lcom/adobe/mobile/MessageFullScreenActivity;

    iget-object v0, v0, Lcom/adobe/mobile/MessageFullScreenActivity;->a:Lcom/adobe/mobile/o;

    invoke-virtual {v0}, Lcom/adobe/mobile/o;->h()V

    .line 61
    return-void
.end method
