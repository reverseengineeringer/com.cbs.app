.class public Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuHolder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    if-eqz p3, :cond_0

    .line 372
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->f()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contstructor name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->b:Ljava/lang/String;

    .line 375
    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a:Ljava/lang/String;

    .line 376
    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->d:Ljava/lang/Class;

    .line 377
    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->c:Ljava/lang/String;

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->d:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->b:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->a:Ljava/lang/String;

    .line 387
    return-void
.end method
