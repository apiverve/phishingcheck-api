from setuptools import setup, find_packages

setup(
    name='apiverve_phishingdomainchecker',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Phishing Domain Checker verifies whether a domain or URL appears in a comprehensive database of known phishing sites. Updated every 6 hours with 850,000+ active phishing domains.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/phishingcheck?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
