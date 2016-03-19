.class final Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a$1;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a$1;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;->a:Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->d()V

    .line 74
    return-void
.end method
