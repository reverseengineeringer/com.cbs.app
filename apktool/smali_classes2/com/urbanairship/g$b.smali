.class final Lcom/urbanairship/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/g;

.field private final b:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/g;)V
    .locals 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/urbanairship/g$b;->a:Lcom/urbanairship/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {p1}, Lcom/urbanairship/g;->b(Lcom/urbanairship/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/urbanairship/g$b;->b:Landroid/text/ClipboardManager;

    .line 371
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/urbanairship/g$b;->b:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/urbanairship/g$b;->b:Landroid/text/ClipboardManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method
