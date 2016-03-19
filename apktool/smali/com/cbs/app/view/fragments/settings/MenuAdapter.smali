.class public Lcom/cbs/app/view/fragments/settings/MenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;,
        Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->c:I

    .line 49
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/MenuAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    const/4 v1, 0x0

    .line 144
    if-nez p2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    const v2, 0x7f0300dd

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    if-eqz p2, :cond_6

    .line 148
    new-instance v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;-><init>()V

    .line 150
    const v0, 0x7f0f0158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 152
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;->a:Landroid/widget/TextView;

    .line 156
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 162
    :goto_1
    if-eqz p2, :cond_1

    .line 164
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->c:I

    if-ne p1, v0, :cond_4

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 166
    const v0, 0x7f02020a

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    .line 174
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 176
    iget-object v2, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->c:I

    if-ne p1, v0, :cond_5

    .line 178
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    :cond_2
    :goto_3
    return-object p2

    .line 160
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;

    move-object v1, v0

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 169
    const v0, 0x7f0201dd

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 180
    :cond_5
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 234
    const/4 v1, 0x0

    .line 235
    if-nez p2, :cond_7

    .line 236
    new-instance v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 238
    const v2, 0x7f0300d9

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    if-eqz p2, :cond_2

    .line 240
    const v0, 0x7f0f02e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 242
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->a:Landroid/widget/TextView;

    .line 244
    :cond_0
    const v0, 0x7f0f02ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 246
    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    .line 248
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    .line 259
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 260
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 261
    const-string v0, ""

    .line 262
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_4

    .line 264
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 265
    if-eqz v3, :cond_3

    .line 267
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 268
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 269
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 271
    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 278
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_4
    iget v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->c:I

    if-ne p1, v0, :cond_8

    .line 281
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->s(Landroid/content/Context;)Z

    move-result v0

    .line 290
    if-eqz v0, :cond_9

    .line 291
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 293
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter$1;-><init>(Lcom/cbs/app/view/fragments/settings/MenuAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    :cond_6
    :goto_3
    return-object p2

    .line 252
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;

    if-eqz v2, :cond_2

    .line 254
    check-cast v0, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;

    move-object v1, v0

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v2

    sget-object v2, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a:Ljava/lang/String;

    const-string v3, "package info not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    :cond_8
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 310
    :cond_9
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    iget-object v0, v1, Lcom/cbs/app/view/fragments/settings/MenuAdapter$a;->b:Landroid/widget/Button;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 95
    :cond_1
    :goto_0
    return v1

    .line 71
    :pswitch_0
    const/4 v1, 0x1

    .line 72
    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment$MenuHolder;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "settingsappversion_fragment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 81
    goto :goto_0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->getItemViewType(I)I

    move-result v0

    .line 110
    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1188
    :cond_3
    if-nez p2, :cond_5

    .line 1189
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1190
    const v1, 0x7f0300d8

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1193
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBS_COM"

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    if-nez v0, :cond_4

    .line 1198
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1199
    invoke-static {v5}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1201
    invoke-static {v4}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1204
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 1207
    :cond_4
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_5
    move-object v1, p2

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x4

    .line 58
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 61
    :cond_1
    return v0
.end method

.method public setSelected(I)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->c:I

    .line 322
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method
