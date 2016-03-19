.class public Lcom/cbs/app/cast/CBSTracksPreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/ListPreference;

.field private j:Landroid/preference/ListPreference;

.field private k:Landroid/preference/ListPreference;

.field private l:Landroid/preference/ListPreference;

.field private m:Landroid/preference/ListPreference;

.field private n:Landroid/preference/ListPreference;

.field private o:Landroid/preference/CheckBoxPreference;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const-class v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->f:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->g:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    const-string v1, "FF"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    const-string v1, "BF"

    const-string v2, "75"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    const-string v1, "80"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    const-string v1, "3F"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SANS_SERIF"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SERIF"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->f:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_MONOSPACED_SANS_SERIF"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_NONE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_OUTLINE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->g:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_DROP_SHADOW"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->p:Z

    .line 85
    iput-object p1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/a/c;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    .line 91
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 392
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 293
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 294
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    aget-object v0, v2, v0

    .line 298
    :goto_1
    return-object v0

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const v2, 0x7f0800c4

    const v9, 0x7f0800c3

    const v8, 0x7f0800c1

    const v3, 0x7f0800c0

    const v7, 0x7f0800bf

    .line 308
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->p:Z

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->o:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800d9

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 316
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 1274
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->h:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1275
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->i:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1276
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->j:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1277
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->k:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1278
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->l:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1279
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->m:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1280
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->n:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 317
    if-eqz p3, :cond_0

    .line 318
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->o:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->d(Z)V

    goto :goto_0

    .line 312
    :cond_2
    const v0, 0x7f0800d5

    goto :goto_1

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    iget-object v6, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->h:Landroid/preference/ListPreference;

    const v3, 0x7f0800de

    const v4, 0x7f0e0007

    const v5, 0x7f0e0008

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    :cond_4
    :goto_2
    if-eqz p3, :cond_0

    .line 383
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/gms/cast/j;)V

    goto/16 :goto_0

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-object v6, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->i:Landroid/preference/ListPreference;

    const v3, 0x7f0800dc

    const v4, 0x7f0e0005

    const v5, 0x7f0e0006

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    iget-object v6, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->j:Landroid/preference/ListPreference;

    const v2, 0x7f0800c5

    const v3, 0x7f0800e0

    const v4, 0x7f0e0001

    const v5, 0x7f0e0002

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 354
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->k:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 360
    iget-object v6, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->l:Landroid/preference/ListPreference;

    const v3, 0x7f0800d8

    const v4, 0x7f0e0003

    const v5, 0x7f0e0004

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 368
    :cond_9
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    iget-object v6, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->m:Landroid/preference/ListPreference;

    const v3, 0x7f0800d2

    const v4, 0x7f0e0001

    const v5, 0x7f0e0002

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 375
    :cond_a
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->n:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    const v1, 0x7f0800bf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final a()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 138
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 142
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundOpacity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EDGE_TYPE_NONE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FONT_FAMILY_SANS_SERIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontScale()F
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public getTextOpacity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/j;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/gms/cast/j;

    invoke-direct {v0}, Lcom/google/android/gms/cast/j;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/j;->a(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v0

    .line 97
    sget-boolean v1, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    if-nez v1, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->setFromPrefs(Lcom/google/android/gms/cast/j;)V

    .line 109
    :cond_1
    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method public setBackgroundOpacity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setEdgeType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setFontScale(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setFromPrefs(Lcom/google/android/gms/cast/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->d(I)V

    .line 114
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->b(I)V

    .line 115
    sget-object v0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getEdgeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->c(I)V

    .line 116
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getFontScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->a(F)V

    .line 117
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    .line 118
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    .line 120
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 121
    const/4 v0, 0x3

    .line 127
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->e(I)V

    .line 128
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getTextOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->a(I)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Edge is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getEdgeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/j;->b(I)V

    .line 134
    return-void

    .line 122
    :cond_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    move v0, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setTextOpacity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->d:Lcom/google/android/libraries/cast/companionlibrary/a/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setUpPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 7

    .prologue
    const v2, 0x7f0800c2

    const v6, 0x7f0800c1

    const v5, 0x7f0800c0

    const v4, 0x7f0800bf

    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->o:Landroid/preference/CheckBoxPreference;

    .line 233
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->h:Landroid/preference/ListPreference;

    .line 236
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->i:Landroid/preference/ListPreference;

    .line 239
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->j:Landroid/preference/ListPreference;

    .line 242
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->k:Landroid/preference/ListPreference;

    .line 245
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->l:Landroid/preference/ListPreference;

    .line 248
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->m:Landroid/preference/ListPreference;

    .line 251
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->n:Landroid/preference/ListPreference;

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->p:Z

    .line 255
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 257
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 263
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 265
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 267
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 269
    iget-object v0, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/cbs/app/cast/CBSTracksPreferenceManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 271
    return-void
.end method
