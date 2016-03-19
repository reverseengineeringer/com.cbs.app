.class public Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v7/app/AppCompatActivity;

.field private c:Landroid/view/View;

.field private d:Lcom/cbs/app/view/model/DeviceCast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 29
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const v0, 0x7f03002b

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "deviceCast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    .line 1070
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    if-eqz v0, :cond_5

    .line 1072
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    const v1, 0x7f0f00dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1073
    if-eqz v0, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    const v1, 0x7f0f00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1078
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getCharacterName()Ljava/lang/String;

    move-result-object v1

    .line 1079
    if-eqz v0, :cond_1

    .line 1080
    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "As "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    const v1, 0x7f0f00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1088
    if-eqz v0, :cond_2

    .line 1089
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getBio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->d:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_4

    .line 1096
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_5

    .line 1103
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    return-object v0

    .line 1083
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->c:Landroid/view/View;

    .line 63
    return-void
.end method
