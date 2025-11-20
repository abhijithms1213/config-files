 **Date:**  *2025-11-04*
 **Tags:** #permanent #linux #cli-tools  #pacman 
 **Linked:** [[]], [[]]
## Explanatio**n**
---
*let's take an example*
AUR Explicit (1): virtualbox-ext-oracle-7.2.4-1
:: PKGBUILD up to date, skipping download: virtualbox-ext-oracle
  1 virtualbox-ext-oracle                    (Build Files Exist)
==> Packages to cleanBuild?
==> [N]one [A]ll [Ab]ort [I]nstalled [No]tInstalled or (1 2 3, 1-3, 4)
==>?

---
That prompt is just asking whether you want to **rebuild** the package or reuse cached build files from a previous installation.
**what it means?**
- **[N]one** → Don’t rebuild anything (use existing build files).
- **[A]ll** → Rebuild all packages from source (recommended if the old build may be broken).
- **[I]nstalled** → Rebuild only those already installed.
- **[No]tInstalled** → Rebuild only those not yet installed.
- **(1 2 3)** → Choose specific package numbers manually.
## **next,**
---
 Deleting (1/1): /home/cj/.cache/yay/virtualbox-ext-oracle
HEAD is now at 702887e commit virtualbox-ext-oracle 7.2.4-1
Removing Oracle_VirtualBox_Extension_Pack-7.2.4.vbox-extpack
Removing virtualbox-ext-oracle-7.2.4-1-any.pkg.tar.zst
  1 virtualbox-ext-oracle                    (Build Files Exist)
==> Diffs to show?
==> [N]one [A]ll [Ab]ort [I]nstalled [No]tInstalled or (1 2 3, 1-3, ^4)
==>

Here’s what each option means:
- **N** → Show none of the diffs (skip viewing changes, proceed normally).
- **A** → Show all diffs.
- **Ab** → Abort the process.
- **I** → Show diffs only for installed packages.
- **No** → Show diffs only for not-installed packages.
## References

- [[]]